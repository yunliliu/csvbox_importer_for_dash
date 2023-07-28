import React, {Component} from 'react';
import PropTypes from 'prop-types';
import { CSVBoxButton } from '@csvbox/react';

/**
 * CsvboxImporterForDash is a component for CSVBox.io integration in Dash.
 */
export default class CsvboxImporterForDash extends Component {
    render() {
        const {id, licenseKey, userId, setProps} = this.props;

        return (
            <CSVBoxButton
                id={id}
                licenseKey={licenseKey}
                user={{ user_id: userId }}
                onImport={(result, data) => {
                    if (setProps) {
                        setProps({
                            result,
                            data
                        });
                    }
                }}
                render={(launch, isLoading) => {
                    return <button disabled={isLoading} onClick={launch}>Upload file</button>;
                }}
            >
                Import
            </CSVBoxButton>
        );
    }
}

CsvboxImporterForDash.defaultProps = {};

CsvboxImporterForDash.propTypes = {
    /**
     * The ID used to identify this component in Dash callbacks.
     */
    id: PropTypes.string,

    /**
     * The license key for CSVBox.io.
     */
    licenseKey: PropTypes.string.isRequired,

    /**
     * The user ID for CSVBox.io.
     */
    userId: PropTypes.string.isRequired,

    /**
     * Dash-assigned callback that should be called to report property changes
     * to Dash, to make them available for callbacks.
     */
    setProps: PropTypes.func,

    /**
     * Result of the import operation.
     */
    result: PropTypes.bool,

    /**
     * Data from the import operation.
     */
    data: PropTypes.object
};
